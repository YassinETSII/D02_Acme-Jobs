
package acme.forms.chart;

import java.io.Serializable;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Chart implements Serializable {

	// Serialisation identifier -----------------------------------------------

	private static final long	serialVersionUID	= 1L;

	// Attributes -------------------------------------------------------------

	List<String>				companySector;
	List<Long>					companyNumber;

	List<String>				investorSector;
	List<Long>					investorNumber;

}
