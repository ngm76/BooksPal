package com.project.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.models.CartItem;
import com.project.models.CustomerOrder;
import com.project.models.User;

@Service
public interface CartItemDao {
void addToCart(CartItem cartItem);
User getUser(String email);
List<CartItem>  getCart(String email);//select * from cartitem where user_email=?
void removeCartItem(int cartItemId);
CustomerOrder createCustomerOrder(CustomerOrder customerOrder);
}
