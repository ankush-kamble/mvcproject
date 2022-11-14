package com.jbk.product.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

@Entity
@Valid
public class User {
	
	@Id
	@NotNull(message = "please enter username")
	private String username;
	
	@NotNull(message = "please enter password")
	private String password;
	
	@NotNull(message = "please select gender")
	private String gender;
	
	@NotNull(message = "please select role")
	private String role;
	
	@NotNull(message = "please select question")
	private String question;
	
	@NotNull(message = "please enter answer")
	private String answer;
	
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", gender=" + gender + ", role=" + role
				+ ", question=" + question + ", answer=" + answer + "]";
	}

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String username, String password, String gender, String role, String question, String answer) {
		super();
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.role = role;
		this.question = question;
		this.answer = answer;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
