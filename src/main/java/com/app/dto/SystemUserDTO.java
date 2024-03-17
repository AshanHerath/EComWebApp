package com.app.dto;

import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class SystemUserDTO {
    private Long userID;
    private String username;
    private String password;
    private String email;
    private String userType;
    private Boolean isactive;
}
