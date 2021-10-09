package com.atguigu.crowd.entity.vo;


public class PortalProjectVO {
	
	private Integer projectId;
	private String projectName;
	private String headerPicturePath;
	private Integer money;
	private String deployDate;
	private Integer percentage;
	private Integer supporter;
	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getHeaderPicturePath() {
		return headerPicturePath;
	}
	public void setHeaderPicturePath(String headerPicturePath) {
		this.headerPicturePath = headerPicturePath;
	}
	public Integer getMoney() {
		return money;
	}
	public void setMoney(Integer money) {
		this.money = money;
	}
	public String getDeployDate() {
		return deployDate;
	}
	public void setDeployDate(String deployDate) {
		this.deployDate = deployDate;
	}
	public Integer getPercentage() {
		return percentage;
	}
	public void setPercentage(Integer percentage) {
		this.percentage = percentage;
	}
	public Integer getSupporter() {
		return supporter;
	}
	public void setSupporter(Integer supporter) {
		this.supporter = supporter;
	}
	@Override
	public String toString() {
		return "PortalProjectVO [projectId=" + projectId + ", projectName=" + projectName + ", headerPicturePath="
				+ headerPicturePath + ", money=" + money + ", deployDate=" + deployDate + ", percentage=" + percentage
				+ ", supporter=" + supporter + "]";
	}
	public PortalProjectVO(Integer projectId, String projectName, String headerPicturePath, Integer money,
			String deployDate, Integer percentage, Integer supporter) {
		super();
		this.projectId = projectId;
		this.projectName = projectName;
		this.headerPicturePath = headerPicturePath;
		this.money = money;
		this.deployDate = deployDate;
		this.percentage = percentage;
		this.supporter = supporter;
	}
	public PortalProjectVO() {
		super();
	}

}
