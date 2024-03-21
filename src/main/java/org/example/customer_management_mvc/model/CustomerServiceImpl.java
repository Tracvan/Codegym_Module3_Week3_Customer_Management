package org.example.customer_management_mvc.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService{
    private static Map<Integer, Customer> customers;
    static {
        customers = new HashMap<>();
        customers.put(1,new Customer( 1,"Nguyen Van A","Nguyenvana@gmail.com","Ha Noi"));
        customers.put(2,new Customer( 2,"Nguyen Van B","Nguyenvanb@gmail.com","Sai gon"));
        customers.put(3,new Customer( 3,"Nguyen Van C","Nguyenvanc@gmail.com","Da Nang"));
        customers.put(4,new Customer( 4,"Nguyen Van D","Nguyenvand@gmail.com","Hue"));
        customers.put(5,new Customer( 5,"Nguyen Van E","Nguyenvane@gmail.com","Hue An"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id,customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
