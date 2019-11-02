
package acme.entities.customisation;

import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Customisation extends DomainEntity {

	// Serialisation identifier -----------------------------------------------

	private static final long	serialVersionUID	= 1L;

	// Attributes -------------------------------------------------------------

	@ElementCollection(fetch = FetchType.EAGER)
	private Set<String>			englishSpamWords;

	@ElementCollection(fetch = FetchType.EAGER)
	private Set<String>			spanishSpamWords;

	@NotNull
	@Min(0)
	@Max(100)
	private Double				spamThreshold;

}
