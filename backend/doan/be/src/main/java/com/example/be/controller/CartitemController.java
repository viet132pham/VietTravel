package com.example.be.controller;

import com.example.be.dto.CartitemDTO;
import com.example.be.entity.Cartitem;
import com.example.be.repository.CartitemRepository;
import com.example.be.request.CartitemRequest;
import com.example.be.service.CartitemService;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/cartitem")
public class CartitemController {
    @Autowired
    private CartitemRepository cartitemRepository;

    @Autowired
    private CartitemService cartitemService;

    @PostMapping("/post")
    public ResponseEntity<?> postRequest(@RequestBody @Valid CartitemRequest cartitemRequest, BindingResult bindingResult) {
        Map<String, String> resultMap = new HashMap<>();
        if (bindingResult.hasErrors()) {
            resultMap.put("error", "Có lỗi xảy ra, vui lòng thử lại sau!");
            return new ResponseEntity<>(resultMap, HttpStatus.BAD_REQUEST);
        }

        try {
            String result = cartitemService.createRequest(cartitemRequest, bindingResult);
            if (result.equals("oke")) {
                resultMap.put("data", "Thêm thành công");
                resultMap.put("error", "");
                return new ResponseEntity<>(resultMap, HttpStatus.OK);
            } else if (result.startsWith("id not found")) {
                resultMap.put("error", "Có lỗi xảy ra, Không tìm thấy id sản phẩm");
                return new ResponseEntity<>(resultMap, HttpStatus.NOT_FOUND);
            } else {
                resultMap.put("error", "Có lỗi xảy ra, vui lòng thử lại sau!");
                return new ResponseEntity<>(resultMap, HttpStatus.BAD_REQUEST);
            }
        } catch (Exception exception) {
            resultMap.put("error", "Có lỗi xảy ra, vui lòng thử lại sau!");
            return new ResponseEntity<>(resultMap, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // remove san pham theo id khoi cart
    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?>  deleteCartitem(@PathVariable(value = "id") long id){
        cartitemService.deleteCartitem(id);
        Map<String, String> resultMap = new HashMap<>();
        resultMap.put("success", "Xóa thành công");
        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }

    // Truyền vào cartId, từ đó get ra list id của item rồi xóa.
    @DeleteMapping("/delete_all/{cartId}")
    public ResponseEntity<?> deleteAllCartitem(@PathVariable(value = "cartId") long cartId) {
        Map<String, String> resultMap = new HashMap<>();
        try {
            cartitemService.deleteAllCartitem(cartId);
            resultMap.put("success", "Xóa thành công");
            return new ResponseEntity<>(resultMap, HttpStatus.OK);
        } catch (Exception e) {
            // Xử lý ngoại lệ và trả về thông báo lỗi
            resultMap.put("error", "Có lỗi xảy ra " + e.getMessage());
            return new ResponseEntity<>(resultMap, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // add san pham, tang quantity
    @PutMapping("/put/{quantity}/{itemId}")
    public Cartitem updateQuantityCart(@PathVariable(value = "quantity") int quantity, @PathVariable(value = "itemId") long itemId) {
        return cartitemService.updateQuantityCart(quantity, itemId);
    }

    @GetMapping("/get/{id}")
    public CartitemDTO getCartitemById(@PathVariable(value = "id") long id){
        return cartitemService.getCartitemById(id);
    }

}