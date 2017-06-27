package tw.com.msig.entity;

import java.time.LocalDateTime;
import java.util.Set;

public class Employee {

	private long id;
	private String employeeId;
	private String name;
	private String departmentId;
	private String email;
	private String phoneNumber;
	private LocalDateTime hireDate;
	private String jobId;
	private String managerId;

	private Set<Item> securitys;
	private Set<Item> leaves;

	@Override
	public String toString() {
		return "Employee [id=" + id + ", employeeId=" + employeeId + ", name=" + name + ", departmentId=" + departmentId
				+ ", email=" + email + ", phoneNumber=" + phoneNumber + ", hireDate=" + hireDate + ", jobId=" + jobId
				+ ", managerId=" + managerId + ", securitys=" + securitys + ", leaves=" + leaves + "]";
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public LocalDateTime getHireDate() {
		return hireDate;
	}

	public void setHireDate(LocalDateTime hireDate) {
		this.hireDate = hireDate;
	}

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public Set<Item> getSecuritys() {
		return securitys;
	}

	public void setSecuritys(Set<Item> securitys) {
		this.securitys = securitys;
	}

	public Set<Item> getLeaves() {
		return leaves;
	}

	public void setLeaves(Set<Item> leaves) {
		this.leaves = leaves;
	}

}