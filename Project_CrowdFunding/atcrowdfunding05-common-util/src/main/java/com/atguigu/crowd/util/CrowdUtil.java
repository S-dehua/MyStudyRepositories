package com.atguigu.crowd.util;

import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.common.comm.ResponseMessage;
import com.aliyun.oss.model.PutObjectResult;
import com.atguigu.crowd.constant.CrowdConstant;

/**
 * 通用工具方法类
 * 
 * @author coffee
 *
 */
public class CrowdUtil {

	/**
	 * 专门负责上传文件到 OSS 服务器的工具方法
	 * 
	 * @param endpoint        OSS 参数
	 * @param accessKeyId     OSS 参数
	 * @param accessKeySecret OSS 参数
	 * @param inputStream     要上传的文件的输入流
	 * @param bucketName      OSS 参数
	 * @param bucketDomain    OSS 参数
	 * @param originalName    要上传的文件的原始文件名
	 * @return 包含上传结果以及上传的文件在 OSS 上的访问路径
	 */
	public static ResultEntity<String> uploadFileToOss(String endpoint, String accessKeyId, String accessKeySecret,
			InputStream inputStream, String bucketName, String bucketDomain, String originalName) {
		// 创建 OSSClient 实例。
		OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);
		// 生成上传文件的目录
		String folderName = new SimpleDateFormat("yyyyMMdd").format(new Date());
		// 生成上传文件在 OSS 服务器上保存时的文件名
		// 原始文件名：beautfulgirl.jpg
		// 生成文件名：wer234234efwer235346457dfswet346235.jpg
		// 使用 UUID 生成文件主体名称
		String fileMainName = UUID.randomUUID().toString().replace("-", "");
		// 从原始文件名中获取文件扩展名
		String extensionName = originalName.substring(originalName.lastIndexOf("."));
		// 使用目录、文件主体名称、文件扩展名称拼接得到对象名称
		String objectName = folderName + "/" + fileMainName + extensionName;
		try {
			// 调用 OSS 客户端对象的方法上传文件并获取响应结果数据
			PutObjectResult putObjectResult = ossClient.putObject(bucketName, objectName, inputStream);
			// 从响应结果中获取具体响应消息
			ResponseMessage responseMessage = putObjectResult.getResponse();
			// 根据响应状态码判断请求是否成功
			if (responseMessage == null) {
				// 拼接访问刚刚上传的文件的路径
				String ossFileAccessPath = bucketDomain + "/" + objectName;
				// 当前方法返回成功
				return ResultEntity.successWithData(ossFileAccessPath);
			} else {
				// 获取响应状态码
				int statusCode = responseMessage.getStatusCode();
				// 如果请求没有成功，获取错误消息
				String errorMessage = responseMessage.getErrorResponseAsString();
				// 当前方法返回失败
				return ResultEntity.failed(" 当 前 响 应 状 态 码 =" + statusCode + " 错 误 消 息=" + errorMessage);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 当前方法返回失败
			return ResultEntity.failed(e.getMessage());
		} finally {
			if (ossClient != null) {
				// 关闭 OSSClient。
				ossClient.shutdown();
			}
		}
	}

	/**
	 * 对明文字符串进行MD5加密
	 * 
	 * @param source
	 * @return
	 */
	public static String md5(String source) {

		// 1 判断source是否有效
		if (source == null || source.length() == 0) {

			// 2 如果不是有效的字符串就抛出异常
			throw new RuntimeException(CrowdConstant.MESSAGE_STRING_INVALIDATE);
		}

		try {
			// 3 获取MessageDigest对象
			String algorithm = "md5";

			MessageDigest messageDigest = MessageDigest.getInstance(algorithm);

			// 4 获取明文字符串对应的字节数组
			byte[] input = source.getBytes();

			// 5 执行加密
			byte[] output = messageDigest.digest(input);

			// 6 创建BigInteger对象
			int signum = 1;
			BigInteger bigInteger = new BigInteger(signum, output);

			// 7 按照16进制将BigInteger的值转化为字符串
			int radix = 16;
			String encoded = bigInteger.toString(radix).toUpperCase();

			return encoded;

		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	/**
	 * 判断当前请求是否为Ajax请求
	 * 
	 * @param request
	 * @return true-->是Ajax请求 false-->不是Ajax请求
	 */
	public static boolean judgeRequestType(HttpServletRequest request) {

		// 1 获取请求消息头
		String acceptHeader = request.getHeader("Accept");
		String xRequestHeader = request.getHeader("X-Requested-With");

		// 2 判断
		return (acceptHeader != null && acceptHeader.contains("application/json"))
				|| (xRequestHeader != null && xRequestHeader.equals("XMLHttpRequest"));
	}

}
