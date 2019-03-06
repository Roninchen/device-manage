package com.stylefeng.guns.util;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @note:
 * @author:fine
 * @date:2018/11/29 10:32 AM
 */
public class ExcelUtil {

    private static final String SUFFIX_XLS = "xls";

    private static final String SUFFIX_XLSX = "xlsx";

    public static <T> List<T> resolve(File file, Class<T> clazz) throws IllegalAccessException, InstantiationException, FileNotFoundException {

        if (!file.isFile() || !file.exists()) {
            throw new RuntimeException("空文件");
        }

        String[] split = file.getName().split("\\.");

        return resolveStream(new FileInputStream(file), file.getName(), clazz);
    }

    private static <T> List<T> resolveFile(Workbook workbook, int sheetAt, Class<T> clazz) {

        if (workbook.getNumberOfSheets() <= sheetAt) {
            throw new IllegalArgumentException("sheet index out of ranges");
        }

        Sheet sheet = workbook.getSheetAt(sheetAt);

        int columnNameNum = sheet.getFirstRowNum();
        Row nameRow = sheet.getRow(columnNameNum); //第一行列的名称
        Field[] fileds = clazz.getDeclaredFields();

        Map<Integer, String> positionMap = new HashMap<>();

        for (int i = nameRow.getFirstCellNum(); i < nameRow.getLastCellNum(); i++) {

            for (int j = 0; j < fileds.length; j++) {
                fileds[j].setAccessible(true);

                if (fileds[j].getName().equalsIgnoreCase(nameRow.getCell(i).toString())) {
                    positionMap.put(i, fileds[j].getName());
                }
            }

        }


        List<T> list = new ArrayList<>();

        for (int i = columnNameNum + 1; i <= sheet.getLastRowNum(); i++) {

            Row row = sheet.getRow(i);

            T t = null;
            try {
                t = clazz.newInstance();

                for (int j = row.getFirstCellNum(); j < row.getLastCellNum(); j++) {

                    Cell cell = row.getCell(j);
                    Class fieldClass = clazz.getDeclaredField(positionMap.get(j)).getType();

                    Field field = clazz.getDeclaredField(positionMap.get(j));
                    field.setAccessible(true);

                    if (fieldClass.equals(String.class)) {

                        field.set(t, cell.getStringCellValue());
                    } else if (fieldClass.equals(Double.class)) {

                        field.set(t, cell.getNumericCellValue());
                    } else if (fieldClass.equals(Integer.class)) {
                        field.set(t,Double.valueOf(cell.getNumericCellValue()).intValue());
                    }

                }
                list.add(t);

            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchFieldException e) {
                e.printStackTrace();
            }

        }

        return list;
    }


    public static <T> List<T> resolveStream(InputStream fileInputStream, String fileName, Class<T> clazz) {

        String[] split = fileName.split("\\.");


        if (split.length <= 1) {
            throw new RuntimeException("未识别的文件");
        }


        if (split[1].equalsIgnoreCase(SUFFIX_XLS)) {

            Workbook workbook = null;
            try {

                workbook = new HSSFWorkbook(fileInputStream);

                List<T> list = resolveFile(workbook, 0, clazz);
                return list;
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }


        } else if (split[1].equalsIgnoreCase(SUFFIX_XLSX)) {

            Workbook workbook = null;

            try {
                workbook = new XSSFWorkbook(fileInputStream);
                List<T> list = resolveFile(workbook, 0, clazz);
                return list;
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            throw new RuntimeException("文件不合法");
        }

        return null;

    }


}
