package ph.pup.itech.dbtkmgr.encryption;

import com.lambdaworks.crypto.SCryptUtil;

public class Encryption {

    String hashedPassword;

    public Encryption() {
    }

    public String encrypt(String password) {
        this.hashedPassword = SCryptUtil.scrypt(password, 8192, 16, 1);
        return this.hashedPassword;
    }

    public boolean passwordMatched(String plainPassword) {
        return SCryptUtil.check(plainPassword, hashedPassword);
    }
}