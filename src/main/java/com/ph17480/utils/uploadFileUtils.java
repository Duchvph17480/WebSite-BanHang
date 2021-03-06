package com.ph17480.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class uploadFileUtils {

	public File handleUploadFile(MultipartFile uploadFile) {
		String folderPath = "C:\\Users\\ACER\\Documents\\GitHub\\Assignment_Java5\\src\\main\\webapp\\storage";
		File myUploadFolder = new File(folderPath);

		if (!myUploadFolder.exists()) { // ktra sự tồn tại của folder
			myUploadFolder.mkdirs(); // tạo mới nếu k tồn tại
		}
		// lưu file vào thư mục đã chọn
		File saveFile = null;
		try {
			String uuid= UUID.randomUUID().toString();
			String fileName= uuid+"_"+uploadFile.getOriginalFilename();
			saveFile = new File(myUploadFolder, uploadFile.getOriginalFilename());
			uploadFile.transferTo(saveFile);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return saveFile;
	}
}
