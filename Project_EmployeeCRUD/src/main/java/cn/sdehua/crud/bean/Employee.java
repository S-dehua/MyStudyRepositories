package cn.sdehua.crud.bean;

import javax.validation.constraints.Pattern;

public class Employee {
    private Integer empId;
    
    @Pattern(regexp="^[a-zA-Z0-9\\u2E80-\\u9FFF_-]{2,16}$",
    		message="必须2-16位中/英文用户名")
    private String empName;

    private String gender;
    
    //@Email
    @Pattern(regexp="^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$",
    		message="邮箱格式有误，请检查")
    private String email;

    private Integer dId;
    
    private Department department;
    
    

    public Employee() {
		super();
	}

	public Employee(Integer empId, String empName, String gender, String email, Integer dId, Department department) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.gender = gender;
		this.email = email;
		this.dId = dId;
		this.department = department;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Integer getEmpId() {
        return empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName == null ? null : empName.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", gender=" + gender + ", email=" + email
				+ ", dId=" + dId + ", department=" + department + "]";
	}
    
}