package pl.sda.travelagency.repository;

import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;
import pl.sda.travelagency.model.UserEntity;

import java.util.Optional;

public interface UserEntityRepository extends JpaRepository<UserEntity, Long> {

Optional<UserEntity> findByUsernameIgnoreCase(String username);

}
