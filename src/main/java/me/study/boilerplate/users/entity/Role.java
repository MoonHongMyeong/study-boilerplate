package me.study.boilerplate.users.entity;

import lombok.Getter;

@Getter
public enum Role {
    USER, ADMIN;
    private String roleName;
}
