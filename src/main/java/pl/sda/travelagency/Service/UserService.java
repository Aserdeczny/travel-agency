package pl.sda.travelagency.Service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.sda.travelagency.dto.UserDto;
import pl.sda.travelagency.model.UserEntity;
import pl.sda.travelagency.model.UserRoleCode;
import pl.sda.travelagency.model.UserRoleEntity;
import pl.sda.travelagency.repository.UserEntityRepository;
import pl.sda.travelagency.repository.UserRoleRepository;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserEntityRepository userEntityRepository;
    private final UserRoleRepository userRoleRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    public void save(UserDto user) {
        UserRoleEntity roleUser = userRoleRepository.findFirstByCode(UserRoleCode.ROLE_USER);
        List<UserRoleEntity> userRoles = Arrays.asList(roleUser);

        UserEntity userEntity = UserEntity.builder()
                .username(user.getUsername())
                .password(bCryptPasswordEncoder.encode(user.getPassword()))
                .roles(userRoles)
                .build();

        String encryptedPassword = bCryptPasswordEncoder.encode(user.getPassword());
        user.setPassword(encryptedPassword);
        userEntityRepository.save(userEntity);
    }
}
