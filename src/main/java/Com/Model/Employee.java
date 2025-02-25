package Com.Model;

public class Employee {
	private int Eid;
	private String EName;
	private String EmpEmail;
	private String EPassWord;

	public Employee() {

	}

	public int getEid() {
		return Eid;
	}

	public void setEid(int eid) {
		Eid = eid;
	}

	public String getEName() {
		return EName;
	}

	public void setEName(String eName) {
		EName = eName;
	}

	public String getEmpEmail() {
		return EmpEmail;
	}

	public void setEmpEmail(String empEmail) {
		EmpEmail = empEmail;
	}

	public String getEPassWord() {
		return EPassWord;
	}

	public void setEPassWord(String ePassWord) {
		EPassWord = ePassWord;
	}
	

	@Override
	public String toString() {
		return "Employee [Eid=" + Eid + ", EName=" + EName + ", EmpEmail=" + EmpEmail + ", EPassWord=" + EPassWord
				+ "]";
	}

	public Employee(int eid, String eName, String empEmail, String ePassWord) {
		super();
		Eid = eid;
		EName = eName;
		EmpEmail = empEmail;
		EPassWord = ePassWord;
	}
	

}
