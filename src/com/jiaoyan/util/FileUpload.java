package com.jiaoyan.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

/**
 * 上传文件 创建人：QQ：66763316 创建时间：2014年12月23日
 * 
 * @version
 */
public class FileUpload {

	public static boolean DeleteFolder(String deletePath) {// 根据路径删除指定的目录或文件，无论存在与否
		boolean flag = false;
		File file;
		flag = false;
		file = new File(deletePath);
		if (!file.exists()) {// 判断目录或文件是否存在
			System.out.println("文件不存在");
			return flag; // 不存在返回 false
		} else {
			if (file.isFile()) {// 判断是否为文件
				file.delete();// 文件删除
				flag = true;
			} else {
				return false;
			}
		}
		return flag;
	}

	/**
	 * @param file
	 *            //文件对象
	 * @param filePath
	 *            //上传路径
	 * @param fileName
	 *            //文件名
	 * @return 文件名
	 */
	public static String fileUp(MultipartFile file, String filePath,
			String fileName) {
		String extName = ""; // 扩展名格式：
		try {
			if (file.getOriginalFilename().lastIndexOf(".") >= 0) {
				extName = file.getOriginalFilename().substring(
						file.getOriginalFilename().lastIndexOf("."));
			}
			copyFile(file.getInputStream(), filePath, fileName)
					.replaceAll("-", "");
		} catch (IOException e) {
			System.out.println(e);
		}
		return fileName;
	}

	/**
	 * 写文件到当前目录的upload目录中
	 * 
	 * @param in
	 * @param fileName
	 * @throws IOException
	 */
	private static String copyFile(InputStream in, String dir, String realName)
			throws IOException {
		File file = new File(dir, realName);
		if (!file.exists()) {
			if (!file.getParentFile().exists()) {
				file.getParentFile().mkdirs();
			}
			file.createNewFile();
		}
		FileUtils.copyInputStreamToFile(in, file);
		return realName;
	}
}
