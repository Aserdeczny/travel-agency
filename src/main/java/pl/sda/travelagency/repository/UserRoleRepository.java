package pl.sda.travelagency.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.travelagency.model.UserRoleEntity;
import pl.sda.travelagency.model.UserRoleCode;

@Repository
public interface UserRoleRepository extends JpaRepository<UserRoleEntity, Long> {

    UserRoleEntity findFirstByCode(UserRoleCode roleCode);
}
