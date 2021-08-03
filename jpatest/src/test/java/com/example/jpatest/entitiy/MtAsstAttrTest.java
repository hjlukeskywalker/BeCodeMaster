package com.example.jpatest.entitiy;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.test.annotation.Commit;

import javax.persistence.EntityManager;
import javax.swing.text.html.parser.Entity;
import javax.transaction.Transactional;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
@Transactional
class MtAsstAttrTest {

    @Autowired
    EntityManager em;

    @Test
    @Commit
    void save(){
        MtAsstAttr mtAsstAttr =new MtAsstAttr();
        mtAsstAttr.setName("이름");
        mtAsstAttr.setAttributeType("타입");
        mtAsstAttr.setDescription("설명");
        mtAsstAttr.setDeleted(true);

        em.persist(mtAsstAttr);
    }
}