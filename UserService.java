package com.example.roles.service;

import com.example.roles.model.Role;
import com.example.roles.model.User;
import com.example.roles.repository.RoleRepository;
import com.example.roles.repository.UserRepository;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserService implements UserDetailsService {
    @Autowired
    UserRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    @Lazy
    PasswordEncoder bCryptPasswordEncoder;
    public User findById(Long id) {
        Optional<User> user = userRepository.findById(id);
        if(user.isEmpty()){
            throw new UsernameNotFoundException("User not exist!");
        }
        return user.get();
    }
    public List<User> findAll() {
        return userRepository.findAll();
    }
    public User save(User user) {
        Set<Role> roles = new HashSet<>();
        roles.add(new Random().nextBoolean() ? roleRepository.findById(1L).get() : roleRepository.findById(2L).get());
        user.setRoles(roles);
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        return userRepository.save(user);
    }
    public User update(User user) {
        return userRepository.save(user);
    }
    public void deleteById(Long id) {userRepository.deleteById(id);}
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> user = userRepository.findByEmail(username);
        if(user.isEmpty()){
            throw new UsernameNotFoundException("User not exist!");
        }
        return user.get();
    }
}
