package edu.etime.peasantdataplan.pojo;

/**
 * 农户实体
 * @author coffee
 *
 */
public class Peasant {

	private Long peasantid;
	private String peasantname;
	private String peasantaddr;
	private Integer peasantstate;
	public Long getPeasantid() {
		return peasantid;
	}
	public void setPeasantid(Long peasantid) {
		this.peasantid = peasantid;
	}
	public String getPeasantname() {
		return peasantname;
	}
	public void setPeasantname(String peasantname) {
		this.peasantname = peasantname;
	}
	public String getPeasantaddr() {
		return peasantaddr;
	}
	public void setPeasantaddr(String peasantaddr) {
		this.peasantaddr = peasantaddr;
	}
	public Integer getPeasantstate() {
		return peasantstate;
	}
	public void setPeasantstate(Integer peasantstate) {
		this.peasantstate = peasantstate;
	}
	public Peasant(Long peasantid, String peasantname, String peasantaddr, Integer peasantstate) {
		super();
		this.peasantid = peasantid;
		this.peasantname = peasantname;
		this.peasantaddr = peasantaddr;
		this.peasantstate = peasantstate;
	}
	public Peasant() {
		super();
	}
	@Override
	public String toString() {
		return "Peasant [peasantid=" + peasantid + ", peasantname=" + peasantname + ", peasantaddr=" + peasantaddr
				+ ", peasantstate=" + peasantstate + "]";
	}
	
}
