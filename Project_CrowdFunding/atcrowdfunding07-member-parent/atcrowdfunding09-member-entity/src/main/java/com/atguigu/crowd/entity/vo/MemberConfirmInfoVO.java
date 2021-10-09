package com.atguigu.crowd.entity.vo;

import java.io.Serializable;

public class MemberConfirmInfoVO implements Serializable {
	private static final long serialVersionUID = 1L;
// 易付宝账号
	private String paynum;
// 法人身份证号
	private String cardnum;

	public String getPaynum() {
		return paynum;
	}

	public void setPaynum(String paynum) {
		this.paynum = paynum;
	}

	public String getCardnum() {
		return cardnum;
	}

	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public MemberConfirmInfoVO(String paynum, String cardnum) {
		super();
		this.paynum = paynum;
		this.cardnum = cardnum;
	}

	public MemberConfirmInfoVO() {
		super();
	}

	@Override
	public String toString() {
		return "MemberConfirmInfoVO [paynum=" + paynum + ", cardnum=" + cardnum + "]";
	}

}