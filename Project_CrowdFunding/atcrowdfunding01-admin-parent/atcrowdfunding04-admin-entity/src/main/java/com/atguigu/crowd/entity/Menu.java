package com.atguigu.crowd.entity;

import java.util.ArrayList;
import java.util.List;

public class Menu {
	// 主键
    private Integer id;

    // 父节点id
    private Integer pid;

    // 节点名称
    private String name;

    // 节点附带的URL地址，是将来点击菜单项时要跳转的地址
    private String url;

    // 节点图标样式
    private String icon;
    
    // 存储子节点的集合，初始化避免空指针异常
    private List<Menu> children = new ArrayList<>();
    
    // 设置节点默认为打开状态
    private Boolean open = true;
    
    
    
    public List<Menu> getChildren() {
		return children;
	}

	public void setChildren(List<Menu> children) {
		this.children = children;
	}

	public Boolean getOpen() {
		return open;
	}

	public void setOpen(Boolean open) {
		this.open = open;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

	public Menu(Integer id, Integer pid, String name, String url, String icon, List<Menu> children, Boolean open) {
		super();
		this.id = id;
		this.pid = pid;
		this.name = name;
		this.url = url;
		this.icon = icon;
		this.children = children;
		this.open = open;
	}

	public Menu() {
		super();
	}

	@Override
	public String toString() {
		return "Menu [id=" + id + ", pid=" + pid + ", name=" + name + ", url=" + url + ", icon=" + icon + ", children="
				+ children + ", open=" + open + "]";
	}
    
}