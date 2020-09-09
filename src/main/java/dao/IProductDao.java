package dao;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDao {
    public void insertProduct(Product product) throws SQLException;

    public Product selectProduct(int id);

    public List<Product> selectAllProducts();

    public boolean deleteProduct(int id) throws SQLException;

    public boolean updateProduct(Product user) throws SQLException;

    public List<Product> findByName(String country) throws SQLException;
}
