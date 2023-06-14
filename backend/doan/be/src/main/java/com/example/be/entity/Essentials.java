package com.example.be.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "essentials")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Essentials extends BaseEntity {
    @NotNull
    private String name;
}
