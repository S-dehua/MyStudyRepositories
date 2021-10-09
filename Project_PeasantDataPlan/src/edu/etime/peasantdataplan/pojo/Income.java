package edu.etime.peasantdataplan.pojo;

public class Income {
	private long peasantid;
	private String peasantname;
	private String typename;
	private double salary;
	public long getPeasantid() {
		return peasantid;
	}
	public void setPeasantid(long peasantid) {
		this.peasantid = peasantid;
	}
	public String getPeasantname() {
		return peasantname;
	}
	public void setPeasantname(String peasantname) {
		this.peasantname = peasantname;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public Income(long peasantid, String peasantname, String typename, double salary) {
		super();
		this.peasantid = peasantid;
		this.peasantname = peasantname;
		this.typename = typename;
		this.salary = salary;
	}
	public Income() {
		super();
	}
	@Override
	public String toString() {
		return "Income [peasantid=" + peasantid + ", peasantname=" + peasantname + ", typename=" + typename
				+ ", salary=" + salary + "]";
	}
	
	
}
