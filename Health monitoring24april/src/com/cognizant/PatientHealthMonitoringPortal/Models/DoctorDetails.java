package com.cognizant.PatientHealthMonitoringPortal.Models;

public class DoctorDetails {
	String fName;
	String lName;
	int age;
	long contactNo;
	String emailId;
	String gender;
	String city;
	String state;
	String userId;
	String password;
	String securityquestion;
	String securityanswer;
	
	public DoctorDetails()
	{
		
	}

	public DoctorDetails(	String userId,String fName, String lName, int age, long contactNo, String emailId, String gender, String city,
			String state, String password,String securityquestion,String securityanswer) {
		super();
		this.fName = fName;
		this.lName = lName;
		this.age = age;
		this.contactNo = contactNo;
		this.emailId = emailId;
		this.gender = gender;
		this.city = city;
		this.state = state;
		this.userId = userId;
		this.password = password;
		this.securityquestion=securityquestion;
		this.securityanswer=securityanswer;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserId() {
		return userId;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public long getContactNo() {
		return contactNo;
	}

	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

/*	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}*/

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSecurityquestion() {
		return securityquestion;
	}

	public void setSecurityquestion(String securityquestion) {
		this.securityquestion = securityquestion;
	}

	public String getSecurityanswer() {
		return securityanswer;
	}

	public void setSecurityanswer(String securityanswer) {
		this.securityanswer = securityanswer;
	}

	
    public DoctorDetails getUser()
    {

    	DoctorDetails u = new DoctorDetails(userId,fName, lName,age,contactNo, emailId,gender,city,state, password,securityquestion,securityanswer);


           
           return u;
    }


	
}
