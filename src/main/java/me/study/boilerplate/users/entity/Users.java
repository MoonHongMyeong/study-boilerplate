package me.study.boilerplate.users.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
public class Users {
    private long id;
    private String email;
    private String password;
    private String name;
    private String phone;
    private Role role;
    private boolean isDeleted;
    private LocalDateTime createdDate;
    private LocalDateTime modifiedDate;

    @Builder
    public Users(String email, String password, String name, String phone, Role role){
        this.email = email;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.role = role;
        this.isDeleted = false;
    }
}
