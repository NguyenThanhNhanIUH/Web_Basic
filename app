import React, { useState } from "react";
import { StyleSheet, View } from "react-native";
import ProductList from "./components/ProductList";
import CartSummary from "./components/CartSummary";
import { Product } from "./components/ProductItem";

export default function App() {
  const [cart, setCart] = useState<Product[]>([]);

  const products: Product[] = [
    { id: "1", name: "Sản phẩm A", price: 100 },
    { id: "2", name: "Sản phẩm B", price: 200 },
    { id: "3", name: "Sản phẩm C", price: 300 },
  ];

  const addToCart = (product: Product) => {
    setCart([...cart, product]);
  };

  return (
    <View style={styles.container}>
      <CartSummary cart={cart} />
      <ProductList products={products} onAddToCart={addToCart} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: "#fff",
    marginTop: 40,
  },
});