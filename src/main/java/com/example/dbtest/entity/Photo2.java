package com.example.dbtest.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
@Table(name="PHOTO2")
public class Photo2 {
    @Id
    @Column(name="PHOTO2_ID")
    private int photo2_id;

    @ManyToOne  //each recipe may have one or many photos
    @JoinColumn(name="PHOTO2_RECIPE_ID")
    private Recipe recipe_id;

    @NonNull
    @Column(name="PHOTO2_FILENAME")
    private String photo2_filename;

    @Column(name="PHOTO2_CAPTION")
    private String photo2_caption;

    @Column(name="PHOTO2_DATESTAMP")  // LocalDateTime
    private LocalDateTime photo2_datestamp;

    @NonNull
    @Column(name="PHOTO2_VISIBLE")
    private char photo2_visible;
}
