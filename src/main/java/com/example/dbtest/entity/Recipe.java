package com.example.dbtest.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@Table(name="RECIPE")
public class Recipe {
    @Id
    @Column(name="RECIPE_ID")
    private int recipe_id;

    @ManyToOne  //ONE chef CAN HAVE MANY recipes
    @JoinColumn(name="RECIPE_CHEF_ID")
    private Chef chef_id;

    @Column(name="RECIPE_TITLE")
    private String recipe_title;

    @Column(name="RECIPE_DESCRIPTION")
    private String recipe_description;
}
