package com.example.dbtest.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@NoArgsConstructor
@Table(name="CHEF")
public class Chef {
    @Id
    @Column(name="CHEF_ID")
    private int chef_id;

    @Column(name="CHEF_FIRSTNAME")
    private String chef_firstname;

    @Column(name="CHEF_LASTNAME")
    private String chef_lastname;

    @Column(name="CHEF_AVATAR")
    private String chef_avatar;
}