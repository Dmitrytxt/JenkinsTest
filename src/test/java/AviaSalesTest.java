import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;

public class AviaSalesTest {

    ChromeDriver driver;
    
    @Test
    public void test() {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.get(System.getProperty("url"));
        WebElement inpDestination = driver.findElement(By.xpath("//input[@id='destination']"));
        inpDestination.sendKeys("Omsk");
        WebElement btnChangeDirection = driver.findElement(By.xpath("//div[@class='swap-places']"));
        btnChangeDirection.click();
        driver.quit();
    }
    
}