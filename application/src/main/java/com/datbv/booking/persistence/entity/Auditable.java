package com.datbv.booking.persistence.entity;

import com.datbv.booking.config.Database;
import com.vladmihalcea.hibernate.type.json.JsonBinaryType;
import com.vladmihalcea.hibernate.type.json.JsonStringType;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldNameConstants;
import org.hibernate.annotations.TypeDef;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;
import java.time.Instant;

@Getter
@Setter(AccessLevel.PRIVATE)
@MappedSuperclass
@FieldNameConstants
@EntityListeners(AuditingEntityListener.class)
@TypeDef(name = Database.TypeDefinition.JSON, typeClass = JsonStringType.class)
@TypeDef(name = Database.TypeDefinition.JSONB, typeClass = JsonBinaryType.class)
public abstract class Auditable {

    @CreatedDate
    @Column(name = "created_time", nullable = false, updatable = false)
    private Instant createdTime;

    @LastModifiedDate
    @Column(name = "updated_time", nullable = false)
    private Instant updatedTime;

}
