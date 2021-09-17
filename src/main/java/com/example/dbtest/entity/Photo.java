package com.example.dbtest.entity;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import sun.util.calendar.BaseCalendar;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@Table(name = "PHOTO")
public class Photo {
    @Id
    @Column(name="PHOTO_ID") //each photo must be owned by 1 & only 1 collector
    private int id;

    @Column(name="PHOTO_FILENAME")
    private String filename;

    @ManyToOne  //ONE collector must HAVE one or MANY photos
    @JoinColumn(name="PHOTO_COLLECTOR_ID")
    private Collector photocollectorid;

    @Column(name="PHOTO_TIMESTAMP")  // LocalDateTime
    private LocalDateTime timestamp;

    @Column(name="PHOTO_VISIBLE")
    private char visible;
}

