# The application will not boot if any of these keys are missing from the relevant .env files.
Dotenv.require_keys('DATABASE_NAME',
                    'DATABASE_USERNAME',
                    'POSTGRES_PASSWORD',
                    'DATABASE_HOST',
                    'REDIS_HOST',
                    'REDIS_PORT')
