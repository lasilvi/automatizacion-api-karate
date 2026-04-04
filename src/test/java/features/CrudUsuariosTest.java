package features;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class CrudUsuariosTest {

    @Test
    void testCrudUsuarios() {
        Results results = Runner.path(
                "classpath:features/createUser.feature",
                "classpath:features/getUser.feature",
                "classpath:features/updateUser.feature",
                "classpath:features/deleteUser.feature"
        ).parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
