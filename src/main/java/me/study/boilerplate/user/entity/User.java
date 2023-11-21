package me.study.boilerplate.user.entity;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class User {
    private Long id;
    private String email;
    private String password;
    private String name;
    private String phone;
    private Role role;
    private boolean isDeleted;
    private LocalDateTime created_at;
    private LocalDateTime modified_at;

    @Builder
    public User(String email, String password, String name, String phone, Role role, boolean isDeleted){
        this.email = email;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.role = role;
        this.isDeleted = isDeleted;
    }
}
