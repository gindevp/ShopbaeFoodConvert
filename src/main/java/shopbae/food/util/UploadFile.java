package shopbae.food.util;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class UploadFile {

	/**
	 * Phương thức này giúp lưu file
	 * 
	 * @param newImg MultipartFile file cần lưu
	 * @param oldImg String tên file cũ
	 * @return tên file vừa lưu
	 * @throws IOException
	 */
	public String uploadFile(MultipartFile newImg, String oldImg, String fileUpload) throws IOException {
		String fileName = newImg.getOriginalFilename();
		if (newImg.isEmpty()) {
			fileName = oldImg;
		} else {
			FileCopyUtils.copy(newImg.getBytes(), new File(fileUpload + fileName));
		}
		return fileName;
	}
	/**
	 * Phương thức này giúp lưu file
	 * 
	 * @param newImg MultipartFile file cần lưu
	 * @return tên file vừa lưu
	 * @throws IOException
	 */
	public String uploadFile(MultipartFile newImg, String fileUpload) throws IOException {
		String fileName = newImg.getOriginalFilename();
		System.out.println(fileUpload);
		if (newImg.isEmpty()) {
			fileName = "tet.jpg";
		} else {
			FileCopyUtils.copy(newImg.getBytes(), new File(fileUpload + fileName));
		}
		return fileName;
	}
}
