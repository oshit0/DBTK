package ph.pup.itech.dbtkmgr.model;


public class UserModel {
    private String userId;
    private String password;
    private String firstName;
    private String middleName;
    private String lastName;
    private String completeAddress;
    private String birthday;
    private String mobileNumber;
    private String accountStatus;
    private String loginStatus;
    private String userType;

    public UserModel() {
        // Set as empty.
    }

    public UserModel(String userId, String password, String firstName, String lastName, String userType) {
        this.userId = userId;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userType = userType;
        this.accountStatus = "Valid";
        this.loginStatus = "Offline";
    }

    public UserModel(String userId, String password, String firstName, String middleName, String lastName, String completeAddress, String birthday, String mobileNumber, String accountStatus, String loginStatus, String userType) {
        this.userId = userId;
        this.password = password;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.completeAddress = completeAddress;
        this.birthday = birthday;
        this.mobileNumber = mobileNumber;
        this.accountStatus = accountStatus;
        this.loginStatus = loginStatus;
        this.userType = userType;
    }

    // Getters
    public String getUserId() {
        return userId;
    }

    public String getPassword() {
        return password;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getCompleteAddress() {
        return completeAddress;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public String getAccountStatus() {
        return accountStatus;
    }

    public String getLoginStatus() {
        return loginStatus;
    }

    public String getUserType() {
        return userType;
    }

    // Setters
    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setCompleteAddress(String completeAddress) {
        this.completeAddress = completeAddress;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }

    public void setLoginStatus(String loginStatus) {
        this.loginStatus = loginStatus;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
}
