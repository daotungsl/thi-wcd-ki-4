package com.wcd.thi.model;


import com.wcd.thi.entity.Phone;

import java.sql.*;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class PhoneModel {
    private Connection connection;

    {
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost/test?user=root$password= ");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Phone> getAllPhone(){
        try{
            List<Phone> listPhone = new List<Phone>() {
                @Override
                public int size() {
                    return 0;
                }

                @Override
                public boolean isEmpty() {
                    return false;
                }

                @Override
                public boolean contains(Object o) {
                    return false;
                }

                @Override
                public Iterator<Phone> iterator() {
                    return null;
                }

                @Override
                public Object[] toArray() {
                    return new Object[0];
                }

                @Override
                public <T> T[] toArray(T[] a) {
                    return null;
                }

                @Override
                public boolean add(Phone phone) {
                    return false;
                }

                @Override
                public boolean remove(Object o) {
                    return false;
                }

                @Override
                public boolean containsAll(Collection<?> c) {
                    return false;
                }

                @Override
                public boolean addAll(Collection<? extends Phone> c) {
                    return false;
                }

                @Override
                public boolean addAll(int index, Collection<? extends Phone> c) {
                    return false;
                }

                @Override
                public boolean removeAll(Collection<?> c) {
                    return false;
                }

                @Override
                public boolean retainAll(Collection<?> c) {
                    return false;
                }

                @Override
                public void clear() {

                }

                @Override
                public Phone get(int index) {
                    return null;
                }

                @Override
                public Phone set(int index, Phone element) {
                    return null;
                }

                @Override
                public void add(int index, Phone element) {

                }

                @Override
                public Phone remove(int index) {
                    return null;
                }

                @Override
                public int indexOf(Object o) {
                    return 0;
                }

                @Override
                public int lastIndexOf(Object o) {
                    return 0;
                }

                @Override
                public ListIterator<Phone> listIterator() {
                    return null;
                }

                @Override
                public ListIterator<Phone> listIterator(int index) {
                    return null;
                }

                @Override
                public List<Phone> subList(int fromIndex, int toIndex) {
                    return null;
                }
            };
            PreparedStatement preparedStatement = connection.prepareStatement("select * from Phone");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int exitPhoneid = rs.getInt(0);
                String exitPhonename = rs.getString(1);
                String exitPhonebrand = rs.getString(2);
                long exitPhoneprice = rs.getLong(3);
                String exitPhonedescription = rs.getString(4);
                Phone phone = new Phone(exitPhoneid,exitPhonename,exitPhonebrand,exitPhoneprice,exitPhonedescription);
                listPhone.add(phone);
                
            }
            return listPhone;
        }catch (SQLException e){
            System.out.println("SQLException" + e.getMessage());
            e.printStackTrace();
        }
        return null;
    }
    public boolean insert(Phone phone){
        Connection connection;
        try{
            connection = DriverManager.getConnection("jdbc:mysql://localhost/test?user=root$password= ");
            PreparedStatement preparedStatement = connection.prepareStatement("insert into Phone(phone)");
        }catch (Exception e){
            System.out.println("SQLException" + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }
}
