package edu.etime.peasantdataplan.pojo;


/**
 * 农产品实体
 * @author coffee
 *
 */
public class Produce {
	private Long produceid;
	private String producename;
	private String produceaddr;
	private double produceprice;
	public Long getProduceid() {
		return produceid;
	}
	public void setProduceid(Long produceid) {
		this.produceid = produceid;
	}
	public String getProducename() {
		return producename;
	}
	public void setProducename(String priducename) {
		this.producename = priducename;
	}
	public String getProduceaddr() {
		return produceaddr;
	}
	public void setProduceaddr(String produceaddr) {
		this.produceaddr = produceaddr;
	}
	public double getProduceprice() {
		return produceprice;
	}
	public void setProduceprice(double produceprice) {
		this.produceprice = produceprice;
	}
	public Produce(Long produceid, String priducename, String produceaddr, double produceprice) {
		super();
		this.produceid = produceid;
		this.producename = priducename;
		this.produceaddr = produceaddr;
		this.produceprice = produceprice;
	}
	public Produce() {
		super();
	}
	@Override
	public String toString() {
		return "Produce [produceid=" + produceid + ", producename=" + producename + ", produceaddr=" + produceaddr
				+ ", produceprice=" + produceprice + "]";
	}
	
	
}
