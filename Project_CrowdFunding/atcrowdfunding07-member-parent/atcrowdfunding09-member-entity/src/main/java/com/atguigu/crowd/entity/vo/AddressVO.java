package com.atguigu.crowd.entity.vo;

import java.io.Serializable;


public class AddressVO implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private Integer id;
	
    private String receiveName;

    private String phoneNum;

    private String address;

    private Integer memberId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getReceiveName() {
		return receiveName;
	}

	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public AddressVO(Integer id, String receiveName, String phoneNum, String address, Integer memberId) {
		super();
		this.id = id;
		this.receiveName = receiveName;
		this.phoneNum = phoneNum;
		this.address = address;
		this.memberId = memberId;
	}

	public AddressVO() {
		super();
	}

	@Override
	public String toString() {
		return "AddressVO [id=" + id + ", receiveName=" + receiveName + ", phoneNum=" + phoneNum + ", address="
				+ address + ", memberId=" + memberId + "]";
	}

}
