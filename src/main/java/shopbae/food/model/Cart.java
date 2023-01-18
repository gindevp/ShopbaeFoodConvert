package shopbae.food.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int quantity;
    private  Double price;
    private Double totalPrice;

    @ManyToOne
    @JoinColumn(name = "user_id")
//    @JsonBackReference
    private AppUser user;

    @ManyToOne()
    @JoinColumn(name = "product_id")
    private Product product;


}
