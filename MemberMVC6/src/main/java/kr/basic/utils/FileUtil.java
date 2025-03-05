package kr.basic.utils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

public class FileUtil {

	public static String uploadFile(HttpServletRequest req, String sDirectory) throws ServletException, IOException {
		Part part = req.getPart("ofile");
		String originalFileName = getOriginalFileName(part);
		createDirectoryIfNotExists(sDirectory);
		if (!originalFileName.isEmpty()) {
			Path targetPath = Paths.get(sDirectory, originalFileName);
			Files.copy(part.getInputStream(), targetPath, StandardCopyOption.REPLACE_EXISTING);
		}
		return originalFileName;
	}

	private static void createDirectoryIfNotExists(String directory) {
		Path dirPath = Paths.get(directory);
		if (Files.notExists(dirPath)) {
			try {
				Files.createDirectories(dirPath);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static String getOriginalFileName(Part part) {
		String partHeader = part.getHeader("content-disposition");
		String originalFileName = partHeader.split("filename=")[1].trim().replace("\"", "");
		return originalFileName;
	}
	
	public static String setAndGetSaveFileName(String fileName) {
		return System.currentTimeMillis() + "_" + fileName.substring(fileName.lastIndexOf("."));
	}
}
