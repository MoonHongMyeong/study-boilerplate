package me.study.boilerplate.user.entity;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Role {
    ADMIN, USER, GUEST;

    private String role;
}
