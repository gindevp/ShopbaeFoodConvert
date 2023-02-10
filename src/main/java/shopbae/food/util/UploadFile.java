package shopbae.food.util;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class UploadFile {
	@Value("${file-upload}")
	private String fileUpload;

	/**
	 * Phương thức này giúp lưu file
	 * 
	 * @param newImg MultipartFile file cần lưu
	 * @param oldImg String tên file cũ
	 * @return tên file vừa lưu
	 * @throws IOException
	 */
	public String uploadFile(MultipartFile newImg, String oldImg) throws IOException {
		MultipartFile multipartFile = newImg;
		String fileName = multipartFile.getOriginalFilename();
		if (multipartFile.isEmpty()) {
			fileName = oldImg;
		} else {
			FileCopyUtils.copy(newImg.getBytes(), new File(fileUpload + fileName));
		}
		return fileName;
	}
	public String uploadFile(MultipartFile newImg) throws IOException {
		MultipartFile multipartFile = newImg;
		String fileName = multipartFile.getOriginalFilename();
		if (multipartFile.isEmpty()) {
			fileName = "tet.jpg";
		} else {
			FileCopyUtils.copy(newImg.getBytes(), new File(fileUpload + fileName));
		}
		return fileName;
	}
}
