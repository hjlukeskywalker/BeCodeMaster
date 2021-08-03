package com.example.jpatest.entitiy;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;
@Getter
@Setter
@Entity
@Table(name="mt_asst_attr")
@EntityListeners(AuditingEntityListener.class)
public class MtAsstAttr {

    @Id
    @GeneratedValue(generator="UUID")
    @GenericGenerator(name="UUID", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(length = 36, nullable = false,columnDefinition = "char(36)")
    private String id;

    @OneToOne
    @JoinColumn(name="asst_type_id",columnDefinition = "char(64)")

    private MtAsstAttr parentMtAssAttr;

    @Column(length = 64, nullable = false)
    private String name;

    @Column(length=64, nullable = false)
    private String attributeType;

    private String description;

    @Column(columnDefinition = "tinyint(1)")
    @ColumnDefault("0")
    private boolean isDeleted;

    @CreatedDate
    @Column(nullable = false)
    @ColumnDefault("current_timestamp()")
    private LocalDateTime createAt;

    @LastModifiedDate
    private LocalDateTime updateAt;

    public MtAsstAttr getParentMtAssAttr() {
        return parentMtAssAttr;
    }


}
