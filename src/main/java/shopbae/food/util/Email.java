package shopbae.food.util;

import java.text.MessageFormat;

public class Email {
    public final String MAIL = "nguyenhuuquyet07092001@gmail.com";
    public final String USER_ERORR = "sai otp ròi mời nhập lại";
    public final String CONFIRM = "Mã xác nhận OTP";
    public final String THANKS = "CẢM ƠN ĐÃ ĐĂNG KÝ";
    public final String MESS = "THÔNG BÁO ĐĂNG KÝ";
    public final String MESSAGE = "BẠN ĐÃ ĐĂNG KÝ CHỜ ADMIN PHÊ DUYỆT";
    public final String USER_EMPTY = "username bạn nhập không tồn tại";

    public String messageOTP(String OTP) {
        return MessageFormat.format(
                "Mã OTP của bạn là: {0}  \nVui lòng không chia sẻ với ai\nMời nhấp link bên dưới để đến trang xác nhận OTP\nhttps://localhost:8443/ShobaeFood/forgotpass/confirm",
                OTP);
    }
}
