package pl.sda.travelagency.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "ROLE")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserRoleEntity {

    @Id
    @GeneratedValue
    @Column(name = "ROLE_ID")
    private Long id;

    @Column
    private UserRoleCode code;
}