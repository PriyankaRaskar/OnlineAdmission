package admission.entity;



public class StudentField {

	private String sname;
	//private Date dob;
	private String mno;
	private String email;
	private String pwd;
	

	

	public String getsname() {
		return  sname;
	}
	/*public Date getDob() {
	return dob;
	}*/
	

	public String getmno() {
		return mno;
	}

	public String getemail() {
		return email;
	}

	public String getpwd() {
		return pwd;
	}

	
	public void setsname(String sname) {
		this.sname=sname;
	}
	

	/*public void setDob(String dob) {
		Date date1 = null;
		if(dob==null || dob.equals("null"))
			return;
		try {
			String format = "";

			if (dob.contains("/")) {
				format = "dd/MM/yyyy";
			} else if (dob.contains("-")) {
				format = "dd-MM-yyyy";
			} else if (dob.contains(".")) {
				format = "dd.MM.yyyy";
			}

			date1 = new SimpleDateFormat(format).parse(dob);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		this.dob = date1;
	}*/

	
	
	
	public void setMobileNumber(String mno) {
		this.mno = mno;
	}
	
	public void setEmail(String email) {
		this.email = email;
		
	}
	
	public void setpwd(String pwd) {
		this.pwd=pwd;
	}

	

	@Override
	public String toString() {
		return "StudentField [Name="+sname+",mobileNumber="+mno+", email="+email+",password="+pwd+"]";
	}

}
