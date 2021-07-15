package pl.sda.travelagency.model;

import lombok.Builder;

import javax.persistence.*;

@Entity
@Table(name = "ROLE")
@Builder
public class UserRoleEntity {

    @Id
    @GeneratedValue
    @Column(name = "ROLE_ID")
    private Long id;

    @Column
    private UserRoleCode code;

}