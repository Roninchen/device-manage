package com.stylefeng.guns;

import com.stylefeng.guns.modular.system.model.UserInfo;
import com.stylefeng.guns.util.ExcelUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

/**
 * @note:
 * @author:fine
 * @date:2018/11/29 10:07 AM
 */
public class Test {


    static String url = "/Users/fine/Desktop/960c576c2d50387e.xls";

    /**
    public static void main(String[] args) throws IOException {


        File file = new File(url);
        if (file.isFile() && file.exists()) {

            String[] split = file.getName().split("\\.");
            Workbook workbook = null;

            if (split[1].equals("xls")) {
                FileInputStream fis = null;

                    fis = new FileInputStream(file);
                    workbook = new HSSFWorkbook(fis);

            } else if (split[1].equals("xlsx")) {
                try {
                    workbook = new XSSFWorkbook(file);
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (InvalidFormatException e) {
                    e.printStackTrace();
                }
            } else {
                System.out.println("文件类型错误");
                return;
            }

            Sheet sheet = workbook.getSheetAt(0);
            int firstRowIndex = sheet.getFirstRowNum()+1;
            int lastRowIndex = sheet.getLastRowNum();

            for (int i = firstRowIndex; i <= lastRowIndex; i++) {
                System.out.println("row:"+i);
                Row row = sheet.getRow(i);
                if (row != null) {
                    int firstCellIndex = row.getFirstCellNum();
                    int lastCellIndex = row.getLastCellNum();
                    for (int j = firstCellIndex; j < lastCellIndex; j++) {
                        Cell cell = row.getCell(j);
                        if (cell != null) {
                            System.out.println(cell.toString());
                        }
                    }
                }
            }

        }
    }
     */


    public static void main(String[] args) {
        File file = new File(url);
        try {
            List<UserInfo> list = ExcelUtil.resolve(file, UserInfo.class);

            if (list != null) {
                list.forEach(System.out::println);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
