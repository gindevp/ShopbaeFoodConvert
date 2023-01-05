package shopbae.food.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.Set;

@Entity(name = "account")
public class Account {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
    @NotBlank
    private String userName;
    @NotBlank
    private String password;

    private boolean isEnabled;
    @NotBlank
    private String email;
    private String otp;
//    @OneToOne(mappedBy = "account")
//    private AppUser user;
//    @OneToOne(mappedBy = "account")
//    private Merchant merchant;
//
//    @OneToMany(mappedBy = "account")
//    private Set<AccountRoleMap> accountRoleMapSet;
//
//    public Account(String userName, String password) {
//        this.userName = userName;
//        this.password = password;
//
//    }
//
//    public Account(String userName, String password, boolean isEnabled, String email, Set<AccountRoleMap> accountRoleMapSet) {
//        this.userName = userName;
//        this.password = password;
//        this.isEnabled = isEnabled;
//        this.email = email;
//        this.accountRoleMapSet = accountRoleMapSet;
//    }
//
//    public Account(String userName, String password, String email, boolean isEnabled) {
//        this.userName = userName;
//        this.password = password;
//        this.email = email;
//        this.isEnabled = isEnabled;
//    }
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isEnabled() {
		return isEnabled;
	}
	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	public Account() {
	}

	public Account(Long id, @NotBlank String userName, @NotBlank String password, boolean isEnabled,
			@NotBlank String email, String otp) {
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.isEnabled = isEnabled;
		this.email = email;
		this.otp = otp;
	}
	@Override
	public String toString() {
		return "Account [id=" + id + ", userName=" + userName + ", password=" + password + ", isEnabled=" + isEnabled
				+ ", email=" + email + ", otp=" + otp + "]";
	}


}