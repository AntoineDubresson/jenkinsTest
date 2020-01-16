package fr.adaming.daotest;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import fr.adaming.dao.IEtudiantDao;
import fr.adaming.entities.Etudiant;
import fr.adaming.entities.Formateur;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/application-context.xml"})
@Transactional
public class EtudiantDaoTest {

	
	@Autowired
	IEtudiantDao eDao;
	
	Formateur f1;
	
	@Before
	public void setUp() {
		this.f1=new Formateur();
		f1.setId(1);
	}
	
	
	@Test
	public void testGetAll() {
		int resulAttendu=2;
		
		List<Etudiant> listE = eDao.getAllEtudiants(f1);
		int resultObtenu = listE.size();
		
		assertEquals(resulAttendu, resultObtenu);
	}
	
	@Test
	@Rollback(value=true)
	public void testAddEtudiant() {
		Etudiant expected = new Etudiant("Dubresson","Antoine",null);
		Etudiant result = eDao.addEtudiant(expected);
		assertEquals(expected, result);
	}
	
	@Test
	public void testGetEtudiantById() {
		String expected ="dddd";
		Etudiant result = new Etudiant();
		result.setId(3);
		result = eDao.getEtudiantById(result);
		assertEquals(expected,result.getNom());
	}
	@Test
	public void testAddEtudiantByIdNom() {
		String expected ="dddd";
		Etudiant result = new Etudiant();
		result.setId(3);
		result = eDao.getEtudiantById(result);
		assertEquals(expected,result.getNom());
	}
	
	@Test
	@Rollback(value=true)
	public void testDeleteEtudiant() {
		Etudiant e1= new Etudiant();
		e1.setId(3);
		eDao.deleteEtudiant(e1);
		assertEquals(1,eDao.getAllEtudiants(f1).size());
	}

}
