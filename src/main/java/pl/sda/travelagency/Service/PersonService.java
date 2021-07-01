package pl.sda.travelagency.Service;

import org.springframework.stereotype.Service;
import pl.sda.travelagency.model.PersonEntity;
import pl.sda.travelagency.repository.PersonRepository;

import java.util.List;

@Service
public class PersonService {

    private final PersonRepository personRepository;

    public PersonService(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    public List<PersonEntity> listOfAllPersons() {

        return personRepository.findAll();
    }

    public void savePerson(PersonEntity person) {

        personRepository.save(person);
    }

    public PersonEntity getPersonById(Long id) {

        return personRepository.findById(id).get();
    }

    public void deletePerson(Long id) {

        personRepository.deleteById(id);
    }
}
