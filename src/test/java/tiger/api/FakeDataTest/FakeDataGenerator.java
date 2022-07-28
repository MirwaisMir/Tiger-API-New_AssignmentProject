package tiger.api.FakeDataTest;

import java.util.Date;

import com.github.javafaker.Faker;
import com.ibm.icu.text.SimpleDateFormat;

public class FakeDataGenerator {

	public static String getEmail() {
		Faker faker = new Faker();
		return faker.name().firstName() + faker.name().lastName() + "@gmail.com";
	}

	public static String getFirstName() {
		Faker faker = new Faker();
		return faker.name().firstName();
	}

	public static String getLastName() {
		Faker faker = new Faker();
		return faker.name().lastName();
	}

	public static String getDoB() {
		Faker faker = new Faker();
		Date date = faker.date().birthday();
		SimpleDateFormat format = new SimpleDateFormat("yyy-MM-dd");
		return format.format(date);

	}

	public static String getJob() {
		Faker faker = new Faker();
		return faker.job().position();

	}

	public static String getCountryName() {
		Faker faker = new Faker();
		return faker.country().name();
	}

	public static String getCountryCode() {
		Faker faker = new Faker();
		return faker.country().countryCode2();

	}

	public static String getCityName() {
		Faker faker = new Faker();
		return faker.address().cityName();
	}

	public static String getStateName() {
		Faker faker = new Faker();
		return faker.address().state();
	}

	public static String getAddresstype() {
		Faker faker = new Faker();
		return faker.address().buildingNumber();

	}

	public static String getAddressLine() {
		Faker faker = new Faker();
		return faker.address().streetAddressNumber();
	}

	public static String getPostalCode() {
		Faker faker = new Faker();
		return faker.address().zipCode();
	}

	public static String getPhoneNumber() {
		Faker faker = new Faker();
		return faker.phoneNumber().phoneNumber();
	}

	public static String getPhoneExtension() {
		Faker faker = new Faker();
		return faker.phoneNumber().extension();
	}

	public static String getPhonType() {
		Faker faker = new Faker();
		return faker.phoneNumber().cellPhone();
	}
	
	}

