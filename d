[1mdiff --git a/backend/doan/be/src/main/java/com/example/be/repository/CartRepository.java b/backend/doan/be/src/main/java/com/example/be/repository/CartRepository.java[m
[1mindex df7854893..66c5d8e7a 100644[m
[1m--- a/backend/doan/be/src/main/java/com/example/be/repository/CartRepository.java[m
[1m+++ b/backend/doan/be/src/main/java/com/example/be/repository/CartRepository.java[m
[36m@@ -1,11 +1,18 @@[m
[31m-package com.example.be.repository;[m
[31m-[m
[31m-import com.example.be.entity.Cart;[m
[31m-import com.example.be.entity.User;[m
[31m-import org.springframework.stereotype.Repository;[m
[31m-[m
[31m-@Repository[m
[31m-public interface CartRepository extends BaseRepository<Cart, Long> {[m
[31m-    public Cart findCartByUserAndStatus(User user, String status);[m
[31m-[m
[31m-}[m
[32m+[m[32mpackage com.example.be.repository;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mimport com.example.be.entity.Cart;[m[41m[m
[32m+[m[32mimport com.example.be.entity.User;[m[41m[m
[32m+[m[32mimport com.example.be.response.CartitemStatus;[m[41m[m
[32m+[m[32mimport org.springframework.data.jpa.repository.Query;[m[41m[m
[32m+[m[32mimport org.springframework.stereotype.Repository;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m@Repository[m[41m[m
[32m+[m[32mpublic interface CartRepository extends BaseRepository<Cart, Long> {[m[41m[m
[32m+[m[32m    public Cart findCartByUserAndStatus(User user, String status);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    @Query(value = "SELECT ci.name as name, c.status as status, ci.price as price, ci.category_id as categoryId, ci.category_name as categoryName\n" +[m[41m[m
[32m+[m[32m            "FROM cartitem ci\n" +[m[41m[m
[32m+[m[32m            "INNER JOIN cart c ON ci.cart_id = c.id " +[m[41m[m
[32m+[m[32m            "WHERE ci.id = :cid", nativeQuery = true)[m[41m[m
[32m+[m[32m    CartitemStatus findItemByIdAndName(long id, String name);[m[41m[m
[32m+[m[32m}[m[41m[m
