package com.example.dbtest.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@NoArgsConstructor
@Table(name="COLLECTOR")
public class Collector {
    @Id
    @Column(name="COLLECTOR_ID")
    private int id;

    @Column(name="COLLECTOR_FIRSTNAME")
    private String firstname;
    @Column(name="COLLECTOR_LASTNAME")
    private String lastname;
    @Column(name="COLLECTOR_AVATAR")
    private String avatar;
}